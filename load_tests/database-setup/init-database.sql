do $$
begin
for i in 10000..20000 loop
insert into users (id, name, email, encrypted_password, created_at, updated_at, is_healthcare_provider) values (i, 'p' || i, 'p' || i || '@e.com', '$2a$11$/.vqpX1N8f1Z9HGi.qlk1eFpMXD3FrCJ3pYkWMMu63/1P3oQ6G2Ga', '2019-11-29 06:56:52.705143', '2019-11-29 06:56:52.705143', true);
end loop;
end;
$$;
