.PHONY: heartbeat guacamole

login:
	argocd login argo.sidhulabs.ca

draw:
	argocd app create draw --repo https://github.com/sidhulabs/infra.git --path manifests/excalidraw --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

heartbeat:
	argocd app create heartbeat --repo https://github.com/sidhulabs/infra.git --path manifests/heartbeat --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

guacamole:
	argocd app create guacamole --repo https://github.com/sidhulabs/infra.git --path manifests/guacamole --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune

install:
	brew install argocd
