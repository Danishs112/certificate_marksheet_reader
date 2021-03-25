import boto3

client = boto3.client('comprehend')
response = client.batch_detect_entities(
    TextList=[
        "UNIVERSITY OF MICHIGAN 07/18/2019 Danish Soma has successfully completed Programming for Everybody (Getting Started with Python) an online non-credit course authorized by University of Michigan and offered through Coursera Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE CERTIFICATE Verify at coursera.org/verify/TX3QR5XCJSRL Coursera has confirmed the identity of this individual and their participation in the course."],
         LanguageCode='en'
)
print(response)
person=""
date=""
organization=""
title=""
print(len(response['ResultList'][0]['Entities']))
for i in range(len(response['ResultList'][0]['Entities'])):

    if response['ResultList'][0]['Entities'][i]['Type'] == "TITLE" :
        title = response['ResultList'][0]['Entities'][i]['Text']
        break

    if response['ResultList'][0]['Entities'][i]['Type'] == "DATE":
        date = response['ResultList'][0]['Entities'][i]['Text']


    elif response['ResultList'][0]['Entities'][i]['Type'] == 'PERSON':
        person = response['ResultList'][0]['Entities'][i]['Text']


    elif response['ResultList'][0]['Entities'][i]['Type'] == "ORGANIZATION":
        organization = response['ResultList'][0]['Entities'][i]['Text']


print(person,date,organization,title)





