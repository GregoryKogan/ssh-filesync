import os
import config

download_dir = os.path.join(config.DOWNLOAD_FOLDER, config.SYNC_DIR_NAME)
if not os.path.exists(download_dir):
    os.makedirs(download_dir)

os.system(
    f"scp -P {config.SERVER_PORT} -r {config.SERVER_ADDRESS}:~/{config.SYNC_DIR_NAME} {download_dir}"
)
