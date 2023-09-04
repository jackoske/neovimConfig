```
#
# Available LSP servers

| Language                            | Server name                       |
| ----------------------------------- | --------------------------------- |
| AWK                                 | `awk_ls`                          |
| Ada                                 | `als`                             |
| Angular                             | `angularls`                       |
| Ansible                             | `ansiblels`                       |
| Antlers                             | `antlersls`                       |
| Apex                                | `apex_ls`                         |
| Arduino                             | `arduino_language_server`         |
| Assembly (GAS/NASM, GO)             | `asm_lsp`                         |
| Astro                               | `astro`                           |
| Azure Pipelines                     | `azure_pipelines_ls`              |
| Bash                                | `bashls`                          |
| Bash                                | `pkgbuild_language_server`        |
| Beancount                           | `beancount`                       |
| Bicep                               | `bicep`                           |
| BrighterScript                      | `bright_script`                   |
| Buf                                 | `bufls`                           |
| C                                   | `clangd`                          |
| C#                                  | `csharp_ls`                       |
| C# [(docs)][omnisharp]              | `omnisharp_mono`                  |
| C# [(docs)][omnisharp]              | `omnisharp`                       |
| C++                                 | `clangd`                          |
| CMake                               | `cmake`                           |
| CMake                               | `neocmake`                        |
| CSS                                 | `cssls`                           |
| CSS                                 | `cssmodules_ls`                   |
| CSS                                 | `unocss`                          |
| Clarity                             | `clarity_lsp`                     |
| Clojure                             | `clojure_lsp`                     |
| CodeQL                              | `codeqlls`                        |
| Crystal                             | `crystalline`                     |
| Cucumber                            | `cucumber_language_server`        |
| Custom Elements Language Server     | `custom_elements_ls`              |
| Cue                                 | `dagger`                          |
| Deno                                | `denols`                          |
| Dhall                               | `dhall_lsp_server`                |
| Diagnostic (general purpose server) | `diagnosticls`                    |
| Dlang                               | `serve_d`                         |
| Docker                              | `dockerls`                        |
| Docker Compose                      | `docker_compose_language_service` |
| Dot                                 | `dotls`                           |
| Drools                              | `drools_lsp`                      |
| EFM (general purpose server)        | `efm`                             |
| ESLint                              | `eslint`                          |
| Elixir                              | `elixirls`                        |
| Elm                                 | `elmls`                           |
| Ember                               | `ember`                           |
| Emmet                               | `emmet_language_server`           |
| Emmet                               | `emmet_ls`                        |
| Erg                                 | `erg_language_server`             |
| Erlang                              | `erlangls`                        |
| F#                                  | `fsautocomplete`                  |
| Fennel                              | `fennel_language_server`          |
| Flux                                | `flux_lsp`                        |
| Foam (OpenFOAM)                     | `foam_ls`                         |
| Fortran                             | `fortls`                          |
| Gleam                               | `gleam`                           |
| Glint                               | `glint`                           |
| Go                                  | `golangci_lint_ls`                |
| Go                                  | `gopls`                           |
| Gradle                              | `gradle_ls`                       |
| Grammarly                           | `grammarly`                       |
| GraphQL                             | `graphql`                         |
| Groovy                              | `groovyls`                        |
| HTML                                | `html`                            |
| Haskell                             | `hls`                             |
| Haxe                                | `haxe_language_server`            |
| Helm                                | `helm_ls`                         |
| Hoon                                | `hoon_ls`                         |
| JSON                                | `jsonls`                          |
| Java                                | `jdtls`                           |
| Java                                | `java_language_server`            |
| JavaScript                          | `quick_lint_js`                   |
| JavaScript                          | `tsserver`                        |
| JavaScript                  :        | `vtsls`                           |
| Jsonnet                             | `jsonnet_ls`                      |
| Julia [(docs)][julials]             | `julials`                         |
| jq                                  | `jqls`                            |
| Kotlin                              | `kotlin_language_server`          |
| LaTeX                               | `ltex`                            |
| LaTeX                               | `texlab`                          |
| Lelwel                              | `lelwel_ls`                       |
| Lua                                 | `lua_ls`                          |
| Luau                                | `luau_lsp`                        |
| Markdown                            | `marksman`                        |
| Markdown                            | `prosemd_lsp`                     |
| Markdown                            | `remark_ls`                       |
| Markdown                            | `vale_ls`                         |
| Markdown                            | `zk`                              |
| Matlab                              | `matlab_ls`                       |
| Metamath Zero                       | `mm0_ls`                          |
| Move                                | `move_analyzer`                   |
| Nickel                              | `nickel_ls`                       |
| Nim                                 | `nimls`                           |
| Nix                                 | `nil_ls`                          |
| Nix                                 | `rnix`                            |
| OCaml                               | `ocamllsp`                        |
| Odin                                | `ols`                             |
| OneScript, 1C:Enterprise            | `bsl_ls`                          |
| OpenAPI                             | `spectral`                        |
| OpenCL                              | `opencl_ls`                       |
| OpenSCAD                            | `openscad_lsp`                    |
| PHP                                 | `intelephense`                    |
| PHP                                 | `phpactor`                        |
| PHP                                 | `psalm`                           |
| Perl                                | `perlnavigator`                   |
| Pest                                | `pest_ls`                         |
| Powershell                          | `powershell_es`                   |
| Prisma                              | `prismals`                        |
| Puppet                              | `puppet`                          |
| PureScript                          | `purescriptls`                    |
| Python                              | `jedi_language_server`            |
| Python                              | `pyre`                            |
| Python                              | `pyright`                         |
| Python                              | `pylyzer`                         |
| Python                              | `sourcery`                        |
| Python [(docs)][pylsp]              | `pylsp`                           |
| Python                              | `ruff_lsp`                        |
| R                                   | `r_language_server`               |
| Raku                                | `raku_navigator`                  |
| ReScript                            | `rescriptls`                      |
| Reason                              | `reason_ls`                       |
| Robot Framework                     | `robotframework_ls`               |
| Rome                                | `rome`                            |
| Ruby                                | `ruby_ls`                         |
| Ruby                                | `solargraph`                      |
| Ruby                                | `sorbet`                          |
| Ruby                                | `standardrb`                      |
| Rust                                | `rust_analyzer`                   |
| SQL                                 | `sqlls`                           |
| SQL                                 | `sqls`                            |
| Salt                                | `salt_ls`                         |
| Shopify Theme Check                 | `theme_check`                     |
| Slint                               | `slint_lsp`                       |
| Smithy                              | `smithy_ls`                       |
| Solidity                            | `solang`                          |
| Solidity                            | `solc`                            |
| Solidity                            | `solidity`                        |
| Solidity                            | `solidity_ls_nomicfoundation`     |
| Sphinx                              | `esbonio`                         |
| Stylelint                           | `stylelint_lsp`                   |
| Svelte                              | `svelte`                          |
| SystemVerilog                       | `svlangserver`                    |
| SystemVerilog                       | `svls`                            |
| SystemVerilog                       | `verible`                         |
| TOML                                | `taplo`                           |
| Tailwind CSS                        | `tailwindcss`                     |
| Teal                                | `teal_ls`                         |
| Terraform                           | `terraformls`                     |
| Terraform                           | `tflint`                          |
| TypeScript                          | `tsserver`                        |
| TypeScript                          | `vtsls`                           |
| Typst                               | `typst_lsp`                       |
| V                                   | `vls`                             |
| Vala                                | `vala_ls`                         |
| Veryl                               | `veryl_ls`                        |
| VimL                                | `vimls`                           |
| Visualforce                         | `visualforce_ls`                  |
| Vue                                 | `volar`                           |
| Vue                                 | `vuels`                           |
| WGSL                                | `wgsl_analyzer`                   |
| XML                                 | `lemminx`                         |
| YAML                                | `yamlls`                          |
| Zig                                 | `zls`                             |

```


