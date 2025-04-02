FROM python:3.12

# IMAGE_VERSION will be passed by default, but other build args can be used too
ARG IMAGE_VERSION
RUN echo "Build argument IMAGE_VERSION: $IMAGE_VERSION"

# You can make them available to the environment as well
ENV ABC=${IMAGE_VERSION}
RUN echo "Env variable ABC: $ABC"



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



