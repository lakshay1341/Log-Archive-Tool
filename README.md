```markdown
# Log Archive Tool

This tool archives logs on a set schedule by compressing them and storing them in a new directory. It is especially useful for removing old logs and keeping the system clean while maintaining the logs in a compressed format for future reference.

## Features

- Compresses logs into a `.tar.gz` file.
- Stores the compressed logs in a specified archive directory.
- Logs the date and time of the archive creation.

## Requirements

- Unix-based system (e.g., Linux)
- Bash shell

## Usage

1. **Clone the repository** (if applicable):
    ```bash
    git clone https://github.com/lakshay1341/Log-Archive-Tool
    cd log-archive-tool
    ```

2. **Make the script executable**:
    ```bash
    chmod +x log-archive.sh
    ```

3. **Run the script**:
    ```bash
    ./log-archive.sh <log-directory>
    ```

    Replace `<log-directory>` with the path to the directory containing the logs you want to archive. For example:
    ```bash
    ./log-archive.sh /var/log
    ```

## Example

```bash
./log-archive.sh /var/log
```

This will compress the logs in `/var/log` and store the archive in `/var/log/archive` with a filename like `logs_archive_20240816_100648.tar.gz`. The script will also log the archive creation date and time to `archive.log`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Author

[Lakshay]

## Acknowledgments

- Inspired by the need to manage log files efficiently on Unix-based systems.
```
https://roadmap.sh/projects/log-archive-tool
