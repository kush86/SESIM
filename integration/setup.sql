INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (1, 'login', 'ROLE_LOGIN', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (2, 'View campaigns', 'ROLE_VIEW_CAMPAIGNS', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (3, 'Edit campaigns', 'ROLE_EDIT_CAMPAIGNS', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (4, 'View Users', 'ROLE_VIEW_USERS', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (5, 'Edit users', 'ROLE_EDIT_USERS', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (6, 'View short-codes', 'ROLE_VIEW_SHORT_CODES', null);
INSERT INTO permission (id, description, permission_name, depends_on_permission_id) VALUES (7, 'Edit short-codes', 'ROLE_EDIT_SHORT_CODES', null);

INSERT INTO user_category (id, name) VALUES (1, 'ADMIN');

INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 1);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 2);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 3);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 4);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 5);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 6);
INSERT INTO user_category_permission (user_category_id, permission_id) VALUES (1, 7);

INSERT INTO user (enabled, username, password, status, user_category_id) VALUES (1, 'admin',
'$2a$10$nSLDupAfFuPhNrtLfnNk4.xwGCeO3yCXdm1ckmp.FVqkl3VIO1l2m', 'ACTIVE', 1);