# NixoS / Home-mangeR ConfiguratioN

Hey, you. This is my nixos configurations.

---

| Machine   | Users |
| --------- | ----- |
| Tytonidae | david |
| Akun      | david |
| Cape      | alice |

---

- david@Tytonidae

| Specialisation | DE / WM   | Shell       | Editor | Termianal | Launcher        | Browser | DM             |
| -------------- | --------- | ----------- | ------ | --------- | --------------- | ------- | -------------- |
| default        | cosmic de | fish + bash | helix  | ghostty   | cosmic-launcher | firefox | cosmic-greeter |
| niri           | niri      | fish + bash | helix  | ghostty   | fuzzel          | firefox | gdm            |

- david@Akun

| Specialisation | DE / WM | Shell       | Editor | Termianal | Launcher | Browser | DM   |
| -------------- | ------- | ----------- | ------ | --------- | -------- | ------- | ---- |
| default        | kde     | fish + bash | helix  | ghostty   | -        | firefox | sddm |

- alice@Cape

| Specialisation | DE / WM | Shell       | Editor | Termianal | Launcher | Browser | DM |
| -------------- | ------- | ----------- | ------ | --------- | -------- | ------- | -- |
| default        | -       | fish + bash | helix  | -         | -        | -       | -  |

## FlakE OutputS and StructurE

| `outputs` field                           | description                                                                 | source                                   |
| ----------------------------------------- | --------------------------------------------------------------------------- | ---------------------------------------- |
| `packages`                                | packages imported or wrapped from elsewhere                                 | ./pkgs                                   |
| `overlays.modifications`                  | the overlays modify `<nixpkgs>`                                             | ./overlays/modifications                 |
| `overlays.additions`                      | the ovelrays add packages in `<nixpkgs>`                                    | ./overlays/additions                     |
| `nixosModules.default`                    | nixos modules shared on different nixos machines                            | ./nixos/modules                          |
| `nixosConfigurations.${machine}`          | machine-local nixos config                                                  | ./nixos/configurations/${machine}        |
| `homeManagerModules.default`              | home-manager modules shared between different user and machine combinations | ./home/modules                           |
| `homeManagerModules.${user}`              | home-manager modules shared between different users                         | ./home/${user}/modules                   |
| `homeConfigurations."${user}@${machine}"` | home-manager config for different user and machine combinations             | ./home/${user}/configurations/${machine} |
| `deploy.nodes.${machine}.system`          | deploy-rs profile for deploying `nixosConfiguration.${machine}` remotely    | -                                        |
