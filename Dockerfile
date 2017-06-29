#Use an offical Python runtime as a parent image
FROM python:3.4-alpine

#Copy the current directory contents into the container at /code
ADD . /code

#Set the working directory to /code
WORKDIR /code

#Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

#Run app.py when the container launches
CMD ["python", "app.py"]