FROM quay.io/modh/odh-minimal-notebook-container@sha256:addd6f8573858510cfa94d1972feb868eb9db04aa38b632616de88b0dcd3d989
USER 1001
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
