FROM cam:v5
RUN mkdir -p /vids
WORKDIR   /vids
COPY   .  .
CMD   ["python3","photo.py"] 
