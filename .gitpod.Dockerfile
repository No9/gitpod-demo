FROM quay.io/icdh/segfaulter as crasher

FROM quay.io/icdh/default


# We can get the exe location from the dump file - "path" property
COPY --from=crasher /usr/local/bin/segfaulter ./

# We can get the file name from the dump event
ENV CORE_FILE=332420e0-803f-4e1a-903b-bd02393c4681-dump-1643499780-segfaulter-segfaulter-1-4.zip

# We can get the exe location from the dump file "exe" property
ENV EXE_LOCATION=/debug/segfaulter

# This will have to be constructed from the dump_file name
ENV CORE_LOCATION=332420e0-803f-4e1a-903b-bd02393c4681-dump-1643499780-segfaulter-segfaulter-1-4/332420e0-803f-4e1a-903b-bd02393c4681-dump-1643499780-segfaulter-segfaulter-1-4.core

