str="PacBio"
docker run -v /vaxart-batch-input/:/input \
-v /vaxart-batch-output/$str:/output quay.io/biocontainers/minimap2:2.28--he4a0461_0 minimap2 \
-t 4 -ax map-hifi \
--eqx /output/reference/GCA_000001405.15_GRCh38_full_plus_hs38d1_analysis_set.fna.gz \
/output/allEXPIplasmidReads.fastq\
-o /output/allEXPIplasmidReadsAgainstGRCH38.bam