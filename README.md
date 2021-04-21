# How to Use logProcessory.py ?

## Before you start, Please make sure to have minimum requirements met:

- Python 2.7

## Apache Access Logs Formatting:
Apache Access Logs that needs to be processed should be in the format mentioned below:

    "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-agent}i\""

where:
- **%h** – Remote host (client IP address)
- **%l** – User identity, or dash, if none (often not used)
- **%u** – Username, via HTTP authentication, or dash if not used
- **%t** – Timestamp of when Apache received the HTTP request
- **\”%r\** – The actual request itself from the client
- **%>s** – The status code Apache returns in response to the request
- **%b** – The size of the request in bytes.
- \”%{Referer}i\” – Referrer header, or dash if not used  (In other words, did they click a URL on another site to come to your site)
- \”%{User-agent}i\ – User agent (contains information about the requester’s browser/OS/etc)

For logs that does not follow above format, the script will not parse your log file and will store the same in `Error.Log`
