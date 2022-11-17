library(tidyverse)
#install.packages("archive")
library(archive)

archive_write_files("write_files.tar.gz",
            c("data/ghcnd_all/AGM00060353.dly", 
                "data/ghcnd_all/AGM00060555.dly",
                "data/ghcnd_all/AGM00060421.dly"))

archive_write_dir("write_dir.tar.gz",
                    "data/ghcnd_all")

archive("write_dir.tar.gz")
archive("data/ghcnd_all.tar.gz")

read_tsv(archive_read("write_dir.tar.gz", 1))
read_tsv(archive_read("write_dir.tar.gz", "AGM00060353.dly"))

read_tsv(archive_read("write_dir.tar.gz", 1))

archive("write_dir.tar.gz") %>%
    pull(path) %>%
    map_dfr(., ~read_tsv(archive_read("write_dir.tar.gz", .x)))
