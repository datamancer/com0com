pushd ..\..\..\win32\Release\

"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.dll
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.exe
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys

pushd "com0com package"
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.cat
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /ac "..\..\..\DigiCert High Assurance EV Root CA.crt" /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /ac "..\..\..\DigiCert High Assurance EV Root CA.crt" /t http://timestamp.verisign.com/scripts/timestamp.dll *.cat
popd

popd


pushd ..\..\..\x64\Release\

"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.dll
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.exe
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys

pushd "com0com package"
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /t http://timestamp.verisign.com/scripts/timestamp.dll *.cat
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /ac "..\..\..\DigiCert High Assurance EV Root CA.crt" /t http://timestamp.verisign.com/scripts/timestamp.dll *.sys
"C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool.exe" sign /a /ac "..\..\..\DigiCert High Assurance EV Root CA.crt" /t http://timestamp.verisign.com/scripts/timestamp.dll *.cat
popd

popd
