--初始化用户
INSERT INTO PROFILE_USER (USERNAME, SALT, EMAIL, JPA_VERSION, MTN_TIMESTAMP, MTN_USER, NAME, PASSWORD, PWD_EXP_DATE, PWD_TRIES, STATUS) VALUES ('admin', '111111', 'admin@admin.com', 0, '2015-08-18 20:44:11', 'System', 'admin', 'f84c7eac0b4fcb632132f81103d83d45', '2020-12-31', 0, 'A');
--初始化角色
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('ADMIN', 0, '管理员');
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('PERSONAL', 0, '个人角色');
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('YRS_SALEMAN', 0, '易日升个人销售');
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('CST_SALEMAN', 0, '外部个人销售');
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('MTH_SALEMAN', 0, '外部商户销售');
INSERT INTO PROFILE_ROLE (ROLE_ID, JPA_VERSION, ROLE_NAME) VALUES ('MERCHANT', 0, '商户角色');

--初始化用户角色
INSERT INTO PROFILE_USER_ROLE (ROLE_ID, USER_ID) VALUES ('ADMIN', 1);
--初始化角色权限
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('ProfileUser', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('ProfileRole', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('ProfileMan', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PERSONAL', 'PERSONAL');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('YRS_SALEMAN', 'YRS_SALEMAN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('CST_SALEMAN', 'CST_SALEMAN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('MTH_SALEMAN', 'MTH_SALEMAN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('MERCHANT', 'MERCHANT');

INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspWhTransSearch', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspFpTransSearch', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspCashTransSearch', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspReachargeOnline', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspCashOnline', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('pspTransferToFee', 'ADMIN');
INSERT INTO PROFILE_ROLE_AUTH (AUTHORITY, ROLE_ID) VALUES ('PspWorkDateList', 'ADMIN');


--安全参数
INSERT INTO PARAMETER_OBJECT (EFFECTIVE_DATE, PARAM_CLASS, PARAM_KEY, JPA_VERSION, MTN_TIMESTAMP, MTN_USER, PARAM_OBJECT) VALUES ('1970-01-01 08:00:00', 'net.engining.profile.api.param.SecurityControl', '*', 0, '2016-06-12 18:10:58', null, '<net.engining.profile.api.param.SecurityControl>
  <pwdExpireDays>30</pwdExpireDays>
  <pwdFirstLoginChgInd>false</pwdFirstLoginChgInd>
  <pwdTries>5</pwdTries>
  <usernamePattern>
    <net.engining.profile.api.param.UsernamePattern>
      <pattern>[a-z,A-Z,0-9,_]*</pattern>
      <message>用户名只能包含字母、数字或下划线</message>
    </net.engining.profile.api.param.UsernamePattern>
    <net.engining.profile.api.param.UsernamePattern>
      <pattern>.{6,12}</pattern>
      <message>用户名长度必须为6-12位</message>
    </net.engining.profile.api.param.UsernamePattern>
  </usernamePattern>
  <complexPwdInd>false</complexPwdInd>
  <passwordPatterns>
    <net.engining.profile.api.param.PasswordPattern>
      <pattern>.*[a-z].*</pattern>
      <mustMatch>true</mustMatch>
      <message>密码必须包含小写字母</message>
      <weights>100</weights>
    </net.engining.profile.api.param.PasswordPattern>
    <net.engining.profile.api.param.PasswordPattern>
      <pattern>.*[A-Z].*</pattern>
      <mustMatch>true</mustMatch>
      <message>密码必须包含大写字母</message>
      <weights>100</weights>
    </net.engining.profile.api.param.PasswordPattern>
    <net.engining.profile.api.param.PasswordPattern>
      <pattern>.*[0-9].*</pattern>
      <mustMatch>true</mustMatch>
      <message>密码必须包含数字</message>
      <weights>100</weights>
    </net.engining.profile.api.param.PasswordPattern>
    <net.engining.profile.api.param.PasswordPattern>
      <pattern>.{8,}</pattern>
      <mustMatch>true</mustMatch>
      <message>密码长度必须大于8位</message>
      <weights>100</weights>
    </net.engining.profile.api.param.PasswordPattern>
  </passwordPatterns>
  <pwdCycleCnt>3</pwdCycleCnt>
</net.engining.profile.api.param.SecurityControl>');
--初始化日期
INSERT INTO PARAMETER_OBJECT (EFFECTIVE_DATE, PARAM_CLASS, PARAM_KEY, JPA_VERSION, MTN_TIMESTAMP, MTN_USER, PARAM_OBJECT) VALUES ('1970-01-01 08:00:00', 'net.engining.pcx.gm.param.model.SystemStatus', '*', 0, '2016-07-04 14:50:07', null, '<net.engining.pcx.gm.param.model.SystemStatus>
  <businessDate>2018-12-31 16:00:00.0 UTC</businessDate>
  <processDate>2018-12-30 16:00:00.0 UTC</processDate>
  <lastProcessDate>2018-12-29 16:00:00.0 UTC</lastProcessDate>
  <systemStatus>N</systemStatus>
</net.engining.pcx.gm.param.model.SystemStatus>');

