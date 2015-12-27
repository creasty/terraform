.PHONY: prepare
prepare:
	@./script/create-varfile
	@terraform remote config -backend=S3 -backend-config="bucket=${S3_BUCKET_NAME}" -backend-config="key=${S3_OBJECT_KEY}"

.PHONY: pull
pull:
	@terraform remote pull

.PHONY: push
push:
	@terraform remote push

.PHONY: plan
plan:
	@terraform plan terraform | ./script/mask-credentials && exit "$${PIPESTATUS[0]}"

.PHONY: apply
apply:
	@terraform apply terraform | ./script/mask-credentials && exit "$${PIPESTATUS[0]}"
