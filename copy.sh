POD=$(kubectl get pods | grep jupyter | awk '{print $1}')

for CP_DIR in coursera deep-learning scratch tensorflow; 
do 
  echo "Copying $CP_DIR..."
  kubectl cp $POD:/home/jovyan/$CP_DIR $(pwd)/$CP_DIR
done
