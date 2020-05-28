# molecule-action
Github action to test Ansible roles with Molecule


## Inputs

### `molecule_options`
Options to pass to molecule such as --debug to enable debug mode. This is an optional input

###  `molecule_command`
Command to pass to molecule, for example, lint, converge, idempotence, test or verify.

default: test

### `molecule_args`
Arguments to pass to molecule such as --scenario-name to target a specific scenario
    required: false


## Example Usage

### Basic example:

```yaml
on: push

jobs:
  molecule:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          path: "${{ github.repository }}"
      - name: Ansible Molecule Test
        uses: onaio/molecule-action@master
```

>NOTE: the checkout action needs to place the file in ${{ github.repository }} in order for Molecule to find your role.
