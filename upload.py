import os
import config

upload_dir = os.path.join(config.UPLOAD_FOLDER, config.SYNC_DIR_NAME)

# remove old files
os.system(
    f"ssh -p {config.SERVER_PORT} {config.SERVER_ADDRESS} rm -rf {config.SYNC_DIR_NAME}"
)

# upload new files
os.system(f"scp -P {config.SERVER_PORT} -r {upload_dir} {config.SERVER_ADDRESS}:~/")
