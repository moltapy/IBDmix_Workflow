1. 38个藏族人39个汉族人，IBDmix注释掉补0的代码，同化SHP，使用生成的mask region：
    - Neanderthal Call:
    ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakeafterchangeSHP_noexclude_regions/ibd_summary_combined/altai_4_50000.txt```
    **平均每个人的Callset(Mb):179.732**
    - Denisovan Call:
    ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakeafterchangeSHP_noexclude_regions/ibd_summary_combined/denisovan_4_50000.txt```
    **平均每个人的Callset(Mb):133.39** 

2. 38个藏族人39个汉族人，IBDmix不做修改，同化SHP，使用生成的mask region：
    - Neanderthal Call:
    ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakebeforechangeSHP_noexclude_regions/ibd_summary_combined/altai_4_50000.txt```  
    **平均每个人的Callset(Mb)：15.5996**
    -Denisovan Call:
    ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakebeforechangeSHP_noexclude_regions/ibd_summary_combined/denisovan_4_50000.txt```  
    **平均每个人的Callset(Mb):3.35909**
2. 38个藏族人39个汉族人和1KGP人群做merge，同化SHP，使用生成的mask region:
    1. 修改IBDmix，注释掉补0的代码：
        1. 使用五个非洲人群作为假阳性对照：
            - Neanderthal Call(final,即使用Neanderthal减去假阳性对照的真正结果):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callneand/ibd_final/4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):84.7995**
            - Neanderthal Original Call(未减去假阳性对照的结果)：
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callneand/ibd_summary_combined/altai_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):180.057**
            - 假阳性对照（五个非洲人群体中的Denisovan Call）:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callneand/ibd_summary_combined/denisovan_4_50000.txt```
        2. 不使用非洲人作为假阳性对照，主要判断Denisovan:
            - Neanderthal Call(original):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/ibd_summary_combined/altai_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):180.057**(和上面一致，是合理的)
            - Denisovan Call:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/ibd_summary_combined/denisovan_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):133.489**
    2. 使用原来的IBDmix代码
        1. 使用五个非洲人群作为假阳性对照：
            - Neanderthal Call(final,即使用Neanderthal减去假阳性对照的真正结果):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakebefore_noexclude_regions_callneand/ibd_final/4_50000.txt```
            ****统计77个人的均值，平均每个人的Callset(Mb):67.967**
            - Neanderthal Original Call(未减去假阳性对照的结果)：
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakebefore_noexclude_regions_callneand/ibd_summary_combined/altai_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):75.7006**
            - 假阳性对照（五个非洲人群体中的Denisovan Call）:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakebefore_noexclude_regions_callneand/ibd_summary_combined/denisovan_4_50000.txt```
        2. 不使用非洲人作为假阳性对照，主要判断Denisovan:
            - Neanderthal Call(original):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakebefore_noexclude_regions_callboth/ibd_summary_combined/altai_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):75.7006**(和上面一致，是合理的)
            - Denisovan Call:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/ibd_summary_combined/denisovan_4_50000.txt```
            **统计77个人的均值，平均每个人的Callset(Mb):16.0687**
3. 227个藏族人，使用生成的mask region:
    1. 修改IBDmix，注释掉补0的代码：
        - Neanderthal Call:
        ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227/output_TIB227cmakeafter_noexclude_regions/ibd_summary_combined/altai_4_50000.txt```
        **统计227个人的均值，平均每个人的Callset(Mb):173.885**
        - Denisovan Call:
        ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227/output_TIB227cmakeafter_noexclude_regions/ibd_summary_combined/denisovan_4_50000.txt```
        **统计227个人的均值，平均每个人的Callset(Mb):129.786**

4. 227个藏族人和1KGP人群做merge，使用生成的mask region:
    1. 修改IBDmix，注释掉补0的代码：
        1. 使用五个非洲人群作为假阳性对照：
            - Neanderthal Call(final,即使用Neanderthal减去假阳性对照的真正结果):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakeafter_noexclude_regions_callneand/ibd_final/4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):82.2591**
            - Neanderthal Original Call(未减去假阳性对照的结果)：
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakeafter_noexclude_regions_callneand/ibd_summary_combined/altai_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):174.018**
            - 假阳性对照（五个非洲人群体中的Denisovan Call）:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakeafter_noexclude_regions_callneand/ibd_summary_combined/denisovan_4_50000.txt```
        2. 不使用非洲人作为假阳性对照，主要判断Denisovan:
            - Neanderthal Call(original):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakeafter_noexclude_regions_callboth/ibd_summary_combined/altai_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):174.018**(和上面一致，是合理的)
            - Denisovan Call:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakeafter_noexclude_regions_callboth/ibd_summary_combined/denisovan_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):129.736**
    2. 使用原来的IBDmix代码
        1. 使用五个非洲人群作为假阳性对照：
            - Neanderthal Call(final,即使用Neanderthal减去假阳性对照的真正结果):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakebefore_noexclude_regions_callneand/ibd_final/4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):66.5946**
            - Neanderthal Original Call(未减去假阳性对照的结果)：
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakebefore_noexclude_regions_callneand/ibd_summary_combined/altai_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):74.0505**
            - 假阳性对照（五个非洲人群体中的Denisovan Call）:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakebefore_noexclude_regions_callneand/ibd_summary_combined/denisovan_4_50000.txt```
        2. 不使用非洲人作为假阳性对照，主要判断Denisovan:
            - Neanderthal Call(original):
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakebefore_noexclude_regions_callboth/ibd_summary_combined/altai_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):74.0505**(和上面一致，是合理的)
            - Denisovan Call:
            ```/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_227merge1kg/output_TIB227merge1kgcmakebefore_noexclude_regions_callboth/ibd_summary_combined/denisovan_4_50000.txt```
            **统计227个人的均值，平均每个人的Callset(Mb):16.5589**
    
