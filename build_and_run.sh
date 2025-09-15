./cp_vault.sh
./ignore_attachments.sh ignore_attachments_list.txt
npx quartz build --concurrency 32 --serve --port 8090
