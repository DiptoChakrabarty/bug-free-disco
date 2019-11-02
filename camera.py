import cv2
face = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
cap= cv2.VideoCapture(0)

while True:
    ret,photo=cap.read()
    faces = face.detectMultiScale(photo)
    for (x,y,w,h) in faces:
        cv2.rectangle(photo,(x,y),(x+w,y+h),(0,0,255),2)
    cv2.imshow('image',photo)
    if (cv2.waitKey(1)==13):
        break
cv2.destroyAllWindows()
cap.release()




