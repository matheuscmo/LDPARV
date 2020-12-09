#!/bin/bash
echo content-type: text/html
echo

TOP=$(top -b -n 1)

echo "<!DOCTYPE html>"
echo "<html lang="pt-br">"
echo "<head>"
echo "    <meta charset="UTF-8">"
echo "    <meta name="viewport" content="width=device-width, initial-scale=1.0">"
echo "    <title>Document</title>"
echo "</head>"
echo "<body>"
echo "<pre>$TOP</pre>"
echo "<br />"
echo "<a href="./test.sh">Voltar</a>"
echo "</body>"
echo "</html>"
