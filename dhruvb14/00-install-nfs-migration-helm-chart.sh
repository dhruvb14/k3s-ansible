helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
kubectl delete namespace nfs-provisioner
kubectl create ns nfs-provisioner
export NFS_SERVER=192.168.1.10;

export NFS_EXPORT_PATH1=/volume3/DockerData/immich_model-cache
export NFS_EXPORT01=immich-model-cache
helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT01 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH1 \
    --set storageClass.name=$NFS_EXPORT01 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT01

export NFS_EXPORT_PATH2=/volume3/DockerData/immich_pgdata
export NFS_EXPORT02=immich-pgdata

helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT02 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH2 \
    --set storageClass.name=$NFS_EXPORT02 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT02

export NFS_EXPORT_PATH3=/volume3/DockerData/immich_tsdata
export NFS_EXPORT03=immich-tsdata

helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT03 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH3 \
    --set storageClass.name=$NFS_EXPORT03 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT03

export NFS_EXPORT_PATH4=/volume2/homes/pasmith19/Photos
export NFS_EXPORT04=pasmith19-photos

helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT04 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH4 \
    --set storageClass.name=$NFS_EXPORT04 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT04

export NFS_EXPORT_PATH5=/volume2/homes/dhruvb14/Photos
export NFS_EXPORT05=dhruvb14-photos

helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT05 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH5 \
    --set storageClass.name=$NFS_EXPORT05 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT05

export NFS_EXPORT_PATH6=/volume2/docker/immich
export NFS_EXPORT06=immich

helm install -n nfs-provisioner nfs-provisioner-$NFS_EXPORT06 nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=$NFS_SERVER \
    --set nfs.path=$NFS_EXPORT_PATH6 \
    --set storageClass.name=$NFS_EXPORT06 \
    --set storageClass.provisionerName=nfs-provisioner-$NFS_EXPORT06
    
