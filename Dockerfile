# ใช้ AdoptOpenJDK
FROM openjdk:8-jdk-alpine

# เพิ่มข้อมูลผู้ดูแลระบบ
LABEL maintainer="frung@example.com"

# เปิดพอร์ต 8080 ให้สามารถเข้าถึงจากภายนอกคอนเทนเนอร์ได้
EXPOSE 8080

# ไฟล์ JAR ของแอปพลิเคชัน
ARG JAR_FILE=target/demo-test002-0.0.1-SNAPSHOT.jar

# เพิ่มไฟล์ JAR ของแอปพลิเคชันลงในคอนเทนเนอร์
ADD ${JAR_FILE} demo-test002.jar

# รันไฟล์ JAR
ENTRYPOINT ["java","-jar","/demo-test002.jar"]
