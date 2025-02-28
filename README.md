# Install Tool From GitHub Release GitHub Action

## Description

<!-- AUTO-DOC-DESCRIPTION:START - Do not remove or modify this section -->

Installs a tool from a GitHub repository release.

<!-- AUTO-DOC-DESCRIPTION:END -->

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|          INPUT          |  TYPE  | REQUIRED |                DEFAULT                 |                                                             DESCRIPTION                                                              |
|-------------------------|--------|----------|----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
|          alias          | string |  false   |                                        |                                        Alias a tool after it is installed; <target>=<alias>.                                         |
|       arch_amd64        | string |  false   |               `"amd64"`                |                          Architecture string for AMD64. This can be used in the filename format as {arch}.                           |
|       arch_arm64        | string |  false   |               `"arm64"`                |                          Architecture string for ARM64. This can be used in the filename format as {arch}.                           |
|      check_command      | string |  false   |                                        |                                         Command to test if the tool was installed correctly.                                         |
|         extract         | string |  false   |                `"true"`                |                                                  If the download needs extracting.                                                   |
|   extract_mode_linux    | string |  false   |               `"tar.gz"`               | Extraction mode when the runner platform is Linux; one of tar.gz, zip, 7z, or xar. This can be used in the filename format as {ext}. |
|   extract_mode_macos    | string |  false   |               `"tar.gz"`               |    Extraction mode when the platform is macOS; one of tar.gz, zip, 7z, or xar. This can be used in the filename format as {ext}.     |
|  extract_mode_windows   | string |  false   |                `"zip"`                 |   Extraction mode when the platform is Windows; one of tar.gz, zip, 7z, or xar. This can be used in the filename format as {ext}.    |
|     filename_format     | string |  false   | `"{name}_{version}_{os}_{arch}.{ext}"` |                               Filename format to use if platform specific format hasn't been provided.                               |
|  filename_format_linux  | string |  false   |                                        |                                          Filename format to use when the platform is Linux.                                          |
|  filename_format_macos  | string |  false   |                                        |                                          Filename format to use when the platform is macOS.                                          |
| filename_format_windows | string |  false   |                                        |                                         Filename format to use when the platform is Windows.                                         |
|      github_token       | string |   true   |                                        |                                               GitHub token to use for authentication.                                                |
|          name           | string |  false   |                                        | Name of the tool being installed, if not set this will default to the repository. This can be used in the filename format as {name}  |
|        os_linux         | string |  false   |               `"linux"`                |                         OS name when the platform is Linux. This can be used in the filename format as {os}.                         |
|        os_macos         | string |  false   |               `"macos"`                |                         OS name when the platform is macOS. This can be used in the filename format as {os}.                         |
|       os_windows        | string |  false   |              `"windows"`               |                        OS name when the platform is Windows. This can be used in the filename format as {os}.                        |
|          owner          | string |   true   |                                        |                                                       GitHub repository owner.                                                       |
|         rename          | string |  false   |                                        |                                        Rename a tool after it is installed; <before>=<after>.                                        |
|       repository        | string |   true   |                                        |                                                          GitHub repository.                                                          |
|      subdirectory       | string |  false   |                                        |                                      Subdirectory within the archive to find the executable(s).                                      |
|       tag_prefix        | string |  false   |                 `"v"`                  |                                                         Version tag prefix.                                                          |
|         version         | string |  false   |               `"latest"`               |                                    Version of the GitHub release to lookup; latest is supported.                                     |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->
