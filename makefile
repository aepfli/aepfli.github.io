
local-spell:
	cd .spell-check-local && docker build -t markdown-spellcheck .
	docker run --rm -t $(docker_user_argument) -v $(shell pwd):/work markdown-spellcheck \
		/bin/bash -c "shopt -s globstar && mdspell --en-us -n -r **/*.md"

local-spell-interactive:
	cd .spell-check-local && docker build -t markdown-spellcheck .
	docker run --rm -it $(docker_user_argument) -v $(shell pwd):/work markdown-spellcheck \
		/bin/bash -c "shopt -s globstar && mdspell --en-us -n **/*.md"

local-lint:
	docker run --rm -t $(docker_user_argument) -v $(shell pwd):/work node:12-alpine \
		/bin/sh -c "cd /work && npx markdownlint-cli ./ && echo 'DONE - All good!'"

check: local-lint local-spell
