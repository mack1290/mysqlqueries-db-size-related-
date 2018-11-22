SELECT table_schema , 
        sum( data_length + index_length ) / 1024 / 1024 /1024 "Data Size in GB", 
        sum( data_free )/ 1024 / 1024 / 1024"Free Space in GB" 
        FROM information_schema.TABLES 
        GROUP BY table_schema;
