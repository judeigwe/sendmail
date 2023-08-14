#!/bin/bash

# Set email variables
FROM_EMAIL="igwejude@example.com"
TO_EMAIL="forinec2019@example.com"
SUBJECT="File Attachment"
BODY="Attached is the file you requested."
ATTACHMENT_PATH="my_file.txt"

# Base64 encode the attachment
BASE64_ATTACHMENT=$(base64 -w 0 "$ATTACHMENT_PATH")

# Construct the email content
EMAIL_CONTENT="Subject: $SUBJECT\nFrom: $FROM_EMAIL\nTo: $TO_EMAIL\n\n$BODY\n\n$BASE64_ATTACHMENT"

# Send the email
echo -e "$EMAIL_CONTENT" | sendmail -t
