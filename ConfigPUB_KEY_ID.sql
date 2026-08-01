UPDATE      C
SET                FISCAL_ID =C_1.FISCAL_ID , PUB_KEY =C_1.PUB_KEY, PUB_KEY_ID =C_1.PUB_KEY_ID, PRV_KY =C_1.PRV_KY, ECONOMIC_NUMBER =C_1.ECONOMIC_NUMBER, URL_MoadianAPI =C_1.URL_MoadianAPI
FROM           Bsell_shabestari2.dbo.Config AS C_1 CROSS JOIN
                         BPMS.dbo.Config C  