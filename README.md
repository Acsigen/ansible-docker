# How to run

## Build the image

```bash
docker compose build
```

## Run the init script

If the `ansible.cfg` file is missing run:

```bash
./ansible-init.sh
```

## Run the playbooks

```bash
./ansible-playbook ./playbooks/example.yml
```
