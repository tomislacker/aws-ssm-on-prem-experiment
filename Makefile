AWS_REGION  := us-east-1
AWS_PROFILE := personal

.PHONY : stack
stack  :
	aws cloudformation deploy \
		--capabilities \
			CAPABILITY_IAM \
			CAPABILITY_NAMED_IAM \
		--profile $(AWS_PROFILE) \
		--region $(AWS_REGION) \
		--stack-name experimental-ssm-agent-on-prem \
		--template-file setup.yml \
		--tags \
			Experimental=yes \
			RetainFor=14
