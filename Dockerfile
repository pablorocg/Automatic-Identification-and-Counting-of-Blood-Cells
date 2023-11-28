FROM python:3.6
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt
RUN python setup.py build_ext --inplace
CMD ["bash"]


