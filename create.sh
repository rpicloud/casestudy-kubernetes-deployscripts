#!/bash/bin
echo "Creating pods, replication controllers, and services"
for file in *-pod.yaml
do
  echo "$file"
  kubectl create -f "$file"  
done

for file in *-rc.yaml
do
  echo "$file"
  kubectl create -f "$file"  
done

for file in *-svc.yaml
do
  echo "$file"
  kubectl create -f "$file"  
done