#!/bash/bin
echo "Deleting pods, replication controllers, and services"

for file in *-svc.yaml
do
  echo "$file"
  kubectl delete -f "$file"  
done

for file in *-rc.yaml
do
  echo "$file"
  kubectl delete -f "$file"  
done

for file in *-pod.yaml
do
  echo "$file"
  kubectl delete -f "$file"  
done
