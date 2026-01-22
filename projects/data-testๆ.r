# เรียกใช้งาน Library สำหรับจัดการข้อมูล
library(dplyr)

# เริ่มการวิเคราะห์ข้อมูล (Data Transformation)
result <- data %>% 
  select(id, name, city, spending) %>%         # เลือกเฉพาะคอลัมน์ที่ต้องการ
  filter(city == "BKK" & spending >= 1000) %>% # กรองเฉพาะคนที่อยู่ BKK และยอดใช้จ่าย >= 1000
  arrange(spending) %>%                        # เรียงลำดับจากน้อยไปมากตามยอด spending
  head(100)                                    # เลือกมาดูแค่ 100 แถวแรก
