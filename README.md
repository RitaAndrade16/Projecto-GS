README

Pipeline de processamento, alinhamento e análise de dados genéticos em bash.

Passo 1:
- Download dos ficheiros para uma pasta na nova diretiva
- Download do gene de referência 
- Neste exemplo a referência é hg19, modificar nome e url conforme a referÊncia usada
- O ficheiro está comprimido, o que será resolvido no passo seguinte

Passo 2:
- Pre-processamento dos ficheiros bam
- Filtração de duplicados

Passo 3:
- A referência é descomprimida
- Mapping bam com genome referência
- Resulta num ficheiro .sam 

Passo 4:
- Passagem do ficheiro.sam para .bam
- ficheiro final .converted.bam

Passo 5:
- Variant calling
- Ficheiro final: variants.vcf

Passo 6:
- Filtros para qualidade das variantes encontradar
- Threshold de 20
- ficheiro final: filtered_vcf

Passo 7:
- Variant Annotation
- Usa bcftools annotate
- Base de dados usada neste exemplo é dbsnp_138
- Ficheiro final Annotated_vcf

Passo 8:
- Métricas de análise básicas do fiheiro vcf
- Conta o número total de variantes
- Conta o número de variantes por gene (resultado no ficheiro gene_variants.txt)

Post analysis:
- Análise de padrões de heterozigosidade
- Análise com variable de pathogenicity
- Análise das pathways principais
- Análise de níveis de expressão


Variante c.244C>T
- Presente na amostra
- Coord: chr16 pos:2096239
- Heterozigote
- Hereditary_cancer-predisposing_syndrome
