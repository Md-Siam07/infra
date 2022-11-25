.PHONY: heartbeat guacamole prefect

login:
	argocd login argo.sidhulabs.ca

draw:
	argocd app create draw --repo https://github.com/sidhulabs/infra.git --path manifests/excalidraw --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

heartbeat:
	argocd app create heartbeat --repo https://github.com/sidhulabs/infra.git --path manifests/heartbeat --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

guacamole:
	argocd app create guacamole --repo https://github.com/sidhulabs/infra.git --path manifests/guacamole --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

prefect:
	argocd app create prefect --repo https://github.com/sidhulabs/infra.git --path manifests/prefect --dest-server https://kubernetes.default.svc --dest-namespace prefect --sync-policy auto --auto-prune

install:
	kubectl create namespace argocd
	kubectl create namespace prefect
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
	brew install argocd
