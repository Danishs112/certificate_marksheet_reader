#libaries needed to the process the image
from PIL import Image
import pytesseract
import argparse
import cv2
import os
########################################################
import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode
import datetime
##################################################
import boto3

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()

ap.add_argument("-p", "--preprocess", type=str, default="thresh",
	help="type of preprocessing to be done")
args = vars(ap.parse_args())

#the select query to the get the data from the database 
#data which will be extracted from the database are the ceritificate id and path of the image that are stored in the database

try:
	conn = mysql.connector.connect(host='localhost',
                                         database='intelligent_certificate',
                                         user='root',
                                         password="")
	sql_select_Query = "select certificate_id,certificate_location,submitted_on from certificate_uploads"
	cursor = conn.cursor()
	cursor.execute(sql_select_Query)
	records = cursor.fetchall()
	for row in records:
		certificate_id = row[0]
		path= row[1]

except:
	print("Error reading data from MySQL table")
#read the path of the image from the database
image = cv2.imread(path)
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
# check to see if we should apply thresholding to preprocess the
# image
if args["preprocess"] == "thresh":
	gray = cv2.threshold(gray, 0, 255,
		cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]
# make a check to see if median blurring should be done to remove
# noise
elif args["preprocess"] == "blur":
	gray = cv2.medianBlur(gray, 3)
# write the grayscale image to disk as a temporary file so we can
# apply OCR to it
filename = "{}.png".format(os.getpid())
cv2.imwrite(filename, gray)
text = pytesseract.image_to_string(Image.open(filename))
os.remove(filename)
#print(text)
lists =[]
lists.append(text.split())
length = len(lists[0])
#print(lists)


client = boto3.client('comprehend')
response = client.batch_detect_entities(
    TextList=[
      text
    ],
         LanguageCode='en'
)

person=""
date=""
organization=""
title=""

#list that we attain after processing the image
for n in range(length):
	#the length is the size of the list named "lists"
	#################################spoken tutorial from IIT Bombay ##########################
	if lists[0][n] == "Spoken":
		named=[]  
		###################################student name ###############################
		for x in range(length):
			if lists[0][x] == "certify":
				a=x
			else:
				pass
			if lists[0][x] == "has":
				b=x
			else:
				pass

		for x in range(a+2,b):
			named.append(lists[0][x])
		stu_name = " ".join(named)
	
########################################course name ##########################################
		coursed =[]
		for x in range(length):
			if lists[0][x] == "completed":
				a=x
			else:
				pass
			if lists[0][x] == "organized":
				b=x
			else:
				pass

		for x in range(a+1,b):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)

#########################################certifying authority ##################################
		coursed =[]
		for x in range(length):
			if lists[0][x] == "provided":
				a=x
			else:
				pass
			if lists[0][x] == "Passing":
				b=x
			else:
				pass

		for x in range(a+3,b):
			coursed.append(lists[0][x])
		certifyingAuthority = " ".join(coursed)
	

################################################instructor name on the ceritificate ###################
		instruct =[]
		for x in range(length):
			if lists[0][x] == "organized":
				a=x
			else:
				pass
			if lists[0][x] == "with":
				b=x
			else:
				pass
		
		for x in range(a+9,b):
			instruct.append(lists[0][x])
		instructor_name = " ".join(instruct)
		

###################################### date on the ceritificate ########################################
		dated =[]
		for x in range(length):
			if lists[0][x] == "India.":
				a=x
			else:
				pass
			if lists[0][x] == "Prof.":
				b=x
			else:
				pass
		
		for x in range(a+1,b-2):
			dated.append(lists[0][x])
	
		date = " ".join(dated)
	########################################coursera#################################
		
	elif lists[0][n] == "Coursera":
		named=[]
		###################################student name ###############################
	
	

		coursed =[]
		for x in range(length):
			if lists[0][x] == "completed":
				a=x
			else:
				pass
			if lists[0][x] == "online":
				b=x
			else:
				pass

		for x in range(a+1,b-1):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)
	
####################################################################ceritifying Authority################

		
		certifyingAuthority = "Coursera"
		
####################################     student name   ####################################################################
		name =[]
		for x in range(length):
			if lists[0][x] == 'successfully':
				a=x
			else:
				pass

	

		for x in range(a-3,a-1):
			name.append(lists[0][x])
		stu_name = " ".join(name)
		

############################################ date on the certificate ######################################################
		dated =[]
		for x in range(length):
			if lists[0][x] == 'successfully':
				a=x
			else:
				pass

		

		for x in range(a-4,a-3):
			dated.append(lists[0][x])
		date = " ".join(dated)
	
##############################################instructor name ####################################################
		instruct =[]
		for x in range(length):
			if lists[0][x] == "offered":
				a=x
			else:
				pass
			if lists[0][x] == "Verify":
				b=x
			else:
				pass

		for x in range(a+3,b-2):
			instruct.append(lists[0][x])
		instructor_name = " ".join(instruct)
		
################################################################################################################

############################################ udemy ############################################################
	elif lists[0][n] == "Instructor":
		named=[]
		###################################course name ###############################
	
	

		coursed =[]
		for x in range(length):
			if lists[0][x] == "completed":
				a=x
			else:
				pass
			if lists[0][x] == "online":
				b=x
			else:
				pass

		for x in range(a+1,b):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)
	#################################################################################################


		################################## certifying authority #################################
		certifyingAuthority = "Udemy"
###############################################date on the ceritificate #######################################################
		name =[]
		for x in range(length):
			if lists[0][x] == 'on':
				a=x
			else:
				pass



		for x in range(a+1,a+4):
			name.append(lists[0][x])
		date = " ".join(name)
	

########################################## student name ################################################################


		name =[]
		for x in range(length):
			if lists[0][x] == "that":
				a=x
			else:
				pass
			if lists[0][x] == "successfully":
				b=x
			else:
				pass

		for x in range(a+1,b):
			name.append(lists[0][x])
		stu_name = " ".join(name)
		
################################################# instructor name ###############################################

		instruct =[]
		for x in range(length):
			if lists[0][x] == 'Instructor':
				a=x
			else:
				pass

		

		for x in range(a-2,a):
			instruct.append(lists[0][x])
		instructor_name = " ".join(instruct)
	
##################################################################################################################

########################################### udacity ######################################################
	if lists[0][n] == "NANODEGREE":
		
		###################################student name ###############################
		named=[]
		for x in range(length):
			if lists[0][x] == "UDACITY":
				a=x
			else:
				pass
			if lists[0][x] == "Has":
				b=x
			else:
				pass

		for x in range(a+1,b):
			named.append(lists[0][x])
		stu_name = " ".join(named)
		
	###################################### course name @#########################################

		coursed =[]
		for x in range(length):
			if lists[0][x] == "completed":
				a=x
			else:
				pass
			if lists[0][x] == "NANODEGREE":
				b=x
			else:
				pass

		for x in range(a+2,b):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)

################################################ Udacity ###########################################
		certifyingAuthority = "Udacity"

######################################instructor name##############################################################
		instructor_name = "Sebastian Thrun Founder,Udacity"
	
#######################################     date     #################################################
		dated =[]
		for x in range(length):
			if lists[0][x] == "COMPLETION":
				a=x
			else:
				pass
			if lists[0][x] == "UDACITY":
				b=x
			else:
				pass
		
		for x in range(a+1,b-1):
			dated.append(lists[0][x])
	
		date = " ".join(dated)
##########################################sololearn###################################
	if lists[0][n] == "Yeva":
		named=[]
		###################################student name ###############################
		for x in range(length):
			if lists[0][x] == "certify":
				a=x
			else:
				pass
			if lists[0][x] == "has":
				b=x
			else:
				pass

		for x in range(a+2,b):
			named.append(lists[0][x])
		stu_name = " ".join(named)
	
########################################################course name #########################
		coursed =[]
		for x in range(length):
			if lists[0][x] == "completed":
				a=x
			else:
				pass
			if lists[0][x] == "course":
				b=x
			else:
				pass

		for x in range(a+1,b+1):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)

#####################################################################################################


		certifyingAuthority = "Sololearn"

#################################################################################################
		instructor_name ="Yeva Hyusyan, Chief Executive Officer"
		

#############################################date on the ceritficate##########################################################
		dated =[]
		for x in range(length):
			if lists[0][x] == "Issued":
				a=x
			else:
				pass
			if lists[0][x] == "This":
				b=x
			else:
				pass
	
		for x in range(a+1,b):
			dated.append(lists[0][x])
	
		date = " ".join(dated)
####################################NVIDIA CERITFICATE ################################################################	

	if lists[0][n] == "NVIDIA":
		named=[]
		###################################student name ###############################
		for x in range(length):
			if lists[0][x] == "awarded":
				a=x
			else:
				pass
			if lists[0][x] == "for":
				b=x
			else:
				pass

		for x in range(a+2,b):
			named.append(lists[0][x])
		stu_name = " ".join(named)
	
#########################################################COURSE NAME ##################################
		coursed =[]
		for x in range(length):
			if lists[0][x] == "completion":
				a=x
			else:
				pass
			if lists[0][x] == "Will":
				b=x
			else:
				pass

		for x in range(a+4,b):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)
		
######################################################################################################

		certifyingAuthority = "NVIDIA DEEP LEARNING INSTITUTE"

######################################################################################################
		instructor_name ="WillRamey 2019 Senior Director"
		
#######################################################################################################

		dated =[]
		for x in range(length):
			if lists[0][x] == "WillRamey":
				a=x
			else:
				pass
			if lists[0][x] == "Senior":
				b=x
			else:
				pass
	
		for x in range(a+11,b):
			dated.append(lists[0][x])
	
		date = " ".join(dated)
################################################DATE #################################################		

	if lists[0][n] == "LinkedIn":
		named=[]
		###################################student name ###############################
		for x in range(length):
			if lists[0][x] == "Congratulations,":
				a=x
			else:
				pass
			

		for x in range(a+1,a+3):
			named.append(lists[0][x])
		stu_name = " ".join(named)
################################ STUDENT NAME ##############################################	
	
################################## cOURSE NAME ############################################
		coursed =[]
		for x in range(length):
			if lists[0][x] == "Congratulations,":
				a=x
			else:
				pass
			if lists[0][x] == "completed":
				b=x
			else:
				pass

		for x in range(a+3,b):
			coursed.append(lists[0][x])
		course_name = " ".join(coursed)

#############################################################################################
		certifyingAuthority = "Linkdin Learning"

##########################################################################################
		instructor_name ="Tanya Staples VP, Linkedin Learning"
		
###############################################################################################

		dated =[]
		for x in range(length):
			if lists[0][x] == "on":
				a=x
			else:
				pass
			if lists[0][x] == "By":
				b=x
			
#				pass

        ##	dated.append(lists[0][x])
	
		#date = " ".join(dated)
###############################################################################################
	else:
		for i in range(len(response['ResultList'][0]['Entities'])):
			if response['ResultList'][0]['Entities'][i]['Type'] == "TITLE" :
				course_name = response['ResultList'][0]['Entities'][i]['Text']
				
			if response['ResultList'][0]['Entities'][i]['Type'] == "DATE":
				date = response['ResultList'][0]['Entities'][i]['Text']

			
			if response['ResultList'][0]['Entities'][i]['Type'] == "ORGANIZATION":
				certifyingAuthority = response['ResultList'][0]['Entities'][i]['Text']

		


			if response['ResultList'][0]['Entities'][i]['Type'] == 'PERSON':
				stu_name = response['ResultList'][0]['Entities'][i]['Text']
				break
			






print(course_name)
print(date)
print(certifyingAuthority)
print(instructor_name)
print(stu_name)



############################USER ID IS DEFAULT ######################################################################
user_id =1;
created_at =  datetime.datetime.now() 
###################################################################################################

conn = mysql.connector.connect(host='localhost',
                                         database='certificate',
                                         user='root',
                                         password="")
   #Creating a cursor object using the cursor() method
cursor = conn.cursor()
#print(certificate_id)
#print(user_id)
#print(stu_name)
#print(course_name)
#print(instructor_name)
#print(certifyingAuthority)
#print(date)
#print(created_at)
# Preparing SQL query to INSERT a record into the database.
insert_stmt = (
"INSERT INTO certificate_information(certificate_id,user_id,stu_name,course_name,instructor_name,certifying_authority,dated,submitted_on)"
   "VALUES (%s,%s, %s, %s, %s, %s, %s, %s)"
)
data = (certificate_id,user_id,stu_name,course_name,instructor_name,certifyingAuthority,date,created_at)

try:
   # Executing the SQL command
   cursor.execute(insert_stmt, data)
   
   # Commit your changes in the database
   conn.commit()

except:
   # Rolling back in case of error
   conn.rollback()

#print("Data inserted")

# Closing the connection
conn.close()
 
# show the output images
#cv2.imshow("Image", image)
#cv2.imshow("Output", gray)
#cv2.waitKey(0)