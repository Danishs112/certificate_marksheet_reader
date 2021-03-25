import boto3
# Document
documentName = "img/udacity1.jpg"

# Read document content
with open(documentName, 'rb') as document:
    imageBytes = bytearray(document.read())

# Amazon Textract client
textract = boto3.client('textract')

# Call Amazon Textract
response = textract.detect_document_text(Document={'Bytes': imageBytes})

#print(response)
ls=[]
# Print detected text
for item in response["Blocks"]:
    if item["BlockType"] == "LINE":
        #print (item["Text"])
         ls.append(item["Text"])
print(ls)
length=len(ls)
print(length)

# for n in range(length):
# 	if ls[n] == "coursera":
# 		for x in range(length):
# 			if ls[x] == "FOR":
# 				a=x
# 				#print(a)
# 			else:
# 				pass
# 		student_name = ls[a-1]
# 		date = ls[a-2]

# 		for x in range(length):
# 	   	    if ls[x] == "GEPARTMENT SCHOOL":
# 	   	    	a=x
# 	   	    	#print(a)

# 	   	    if ls[x] == "coursera":
# 	   	    	b=x
# 	   	    	#print(a)
		
# 		course=[]
# 		for y in range(a+1,b):
# 			course.append(ls[y])

# 		course_name = " ".join(course)

# 		certifying_authority="Coursera"

# 	if ls[n] == "Udemy":
# 		for x in range(length):
# 			if ls[x] == "FOR":
# 				a=x
# 				#print(a)
# 			else:
# 				pass
# 		student_name = ls[a-1]
# 		date = ls[a-2]

# 		for x in range(length):
# 	   	    if ls[x] == "Certificate of Completion":
# 	   	    	a=x
# 	   	    	#print(a)

# 	   	    if ls[x] == "coursera":
# 	   	    	b=x
# 	   	    	#print(a)
		
# 		course=[]
# 		for y in range(a+1,b):
# 			course.append(ls[y])

# 		course_name = " ".join(course)

# 		certifying_authority="Coursera"



# print(student_name,date,course_name,certifying_authority)


# #







# 		