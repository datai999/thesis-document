## **6.6 CI-CD**

<p style='text-align: justify;'>
&emsp;
CI/CD là một bộ đôi công việc, bao gồm CI (Continuous Integration) và CD (Continuous Delivery), 
là quá trình tích hợp (integration) thường xuyên, 
nhanh chóng hơn khi code cũng như thường xuyên cập nhật phiên bản mới (delivery).
</p>

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/ci-cd.png?raw=true">
  <p>Hình 6.6: CI-CD</p>
</center>

</br>
</br>

Triển khai một quy trình CI-CD đơn giản.

<center>
  <img src="https://github.com/datai999/thesis-document/blob/main/report/src/chapter_6_implement/img/ci-cd-flow.png?raw=true">
  <p>Sơ đồ 6.6: Triển khai CI-CD</p>
</center>

- Plan: Yêu cầu về tính năng, kế hoạch sửa chữa,...
- Code: Hiện thực plan
- Dev: Nhánh develop thuộc môi trường develop
- Master: Nhánh thuộc môi trường staging(hoặc production)
- Build: build app, kiểm tra error và đếm số warning
- Test: Thực hiện một lệnh call API ở back-end
- Deploy: Deploy lên môi trường staging(hoặc production)
- InitData: Chỉ có bên code back-end, thêm một số dữ liệu cần thiết vào database

<div style="page-break-after: always;"></div>
