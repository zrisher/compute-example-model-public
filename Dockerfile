


FROM python:3.12
# FROM alpine:latest

ARG IMAGE_VERSION="custom_value"

ENV MY_STRING1=${IMAGE_VERSION}
ENV MY_STRING2="World"

RUN echo "Value of MY_VAR: $IMAGE_VERSION"

RUN echo "Echoing MY_STRING1: $MY_STRING1"
RUN echo "Echoing MY_STRING2: $MY_STRING2"
RUN echo "Echoing both: $MY_STRING1 $MY_STRING2"

RUN echo "Echoing BUILD_TIME_VAR: $IMAGE_VERSION"

#WORKDIR /usr/local/app

# Install the application dependencies
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

# Copy in the source code
#COPY src ./src
#EXPOSE 5000

# Setup an app user so the container doesn't run as the root user
#RUN useradd app
#USER app

#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]



