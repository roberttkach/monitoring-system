This bash script is designed to monitor system resources such as CPU utilization, RAM usage, and disk space usage.

## Usage

1. Make sure you have the necessary utilities installed: `top`, `free`, and `df`.
2. Save the contents of the script to the `monitoring.sh` file.
3. Make the file executable: `chmod +x monitoring.sh`.
4. Run the script: `./monitoring.sh`.

## Functionality

The script performs the following actions:

1. **Get CPU utilization information**:
   - The `top` utility is used to obtain CPU utilization information.
   - The data is processed using the `sed` and `awk` commands to extract the load value in percent.

2. **Get memory utilization information**:
   - The `free` utility is used to retrieve memory utilization information.
   - The data is processed using `awk` to calculate the memory utilization in percentage.

3. **Getting disk space usage information**:
   - The `df` utility is used to obtain disk space usage information.
   - The data is processed using `awk` to extract the disk space usage percentage value for the root partition (`/`).

4. **Results output**:
   - The results are output to the terminal using the `echo` command.

## Notes

- The script is intended to run on GNU/Linux systems, since it uses the `top`, `free` and `df` utilities specific to these systems.
- For the script to work correctly, the utilities used must be installed on the system.
- The script provides information only for the root partition (`/`). To monitor other partitions, you will need to modify the corresponding line of the script.
