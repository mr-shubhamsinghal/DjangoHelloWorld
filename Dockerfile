FROM python:3.10-alpine

WORKDIR /home/myuser/app
COPY . .
ENV PIP_ROOT_USER_ACTION=ignore
RUN python -m pip install --upgrade pip=="24.0"
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]