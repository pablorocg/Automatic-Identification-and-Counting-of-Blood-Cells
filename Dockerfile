# Usar una imagen base oficial de Python, versión 3.7
# FROM python:3.6
FROM python:3.6

# Instalar python3.6 y pip3







# # Instalar dependencias del sistema para OpenCV
RUN apt-get update \
    && apt-get install -y libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el código fuente del proyecto al contenedor
COPY . /app

# Instalar TensorFlow-GPU y TF-slim
RUN pip install opencv-python-headless==4.5.5.64
RUN pip install tensorflow-gpu==2.2.0 
RUN pip install tf-slim==1.1.0 
RUN pip install Cython==0.29.2

# Instalar otras dependencias si son necesarias
# Por ejemplo, si hay un archivo requirements.txt, puedes descomentar la siguiente línea
# RUN pip install -r requirements.txt

# Ejecutar setup.py para construir las extensiones Cython en su lugar
RUN python setup.py build_ext --inplace

# Comando para ejecutar cuando se inicie el contenedor
# Aquí puedes poner el comando para ejecutar tu aplicación, por ejemplo:
# CMD ["python", "detect.py"]

# Iniciar bash dentro del contenedor
CMD ["bash"]

