FROM  quay.io/ansible/molecule:3.0.4

LABEL "maintainer"="Ona Engineering <tech@ona.io>"
LABEL "repository"="https://github.com/onaio/molecule-action"

LABEL "com.github.actions.description"="Test Ansible role with molecule"
LABEL "com.github.actions.name"="ansible-molecule"

CMD cd ${GITHUB_REPOSITORY}; molecule ${INPUT_MOLECULE_OPTIONS} ${INPUT_MOLECULE_COMMAND} ${INPUT_MOLECULE_ARGS}