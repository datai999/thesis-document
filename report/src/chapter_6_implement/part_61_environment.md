### **6.1 Các môi trường**

<p style='text-align: justify;'>
&emsp;
Với dự án này nhóm sẽ sử dụng 3 môi trường để phát triển ứng dụng.
</p

```mermaid
graph LR
    subgraph DevEnv[Development Environment]
      direction TB
      devGit[git-branch:main]
      devURL[url:localhost]
      devDB[database:local]
      devApk[apk:không]
    end

    subgraph StagingEnv[Staging Environment]
      direction TB
      stagingGit[git-branch:staging]
      stagingURL[url:https://datai999.github.io/thesis]
      stagingDB[database:heroku]
      stagingApk[apk:https://expo.io/#datai28599/thesis]
    end

    subgraph ProductEnv[Production Environment]
      direction TB
      productGit[git-branch:release]
      productURL
      productDB
      productApk[apk:CH-Play]
    end

    devGit --CI/CD--> stagingGit --CI/CD--> productGit
    devURL --> stagingURL --> productURL
    devDB --migration--> stagingDB --migration--> productDB
    devApk --expo--> stagingApk --expo--> productApk
```

Vì công cụ vẽ không cho phép kí tự @ nên nhóm đã để dấu # thay thế.

> Staging Environment: apk:https://expo.io/@datai28599/thesis

<div style="page-break-after: always;"></div>