# podman

A repo that has my podman setup scripts
Goals are to have a way to create podman containers on a new host, consistently that does the following.
- Create a user named for the container
- Validate that the account has a homedir and the account owns the contents
- Spin up the container with the user being the account it runs as
