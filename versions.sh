#!/bin/sh
# (ir)responsavel: rafael (at) riseup (dot) net

echo "<html>"
echo "<head>"
echo "<title>"
echo "Vers&otilde;es dos SlackBuilds"
echo "</title>"
echo "</head>"
echo "<body>"
echo "<br><br>"
echo "Aten&ccedil;&atilde;o:<br><br>"
echo "Quando o software possui algum n&uacute;mero de vers&atilde;o, isso "
echo "significa que essa vers&atilde;o &eacute; a vers&atilde;o hardcoded "
echo "do SlackBuild. Vamos mant&ecirc;-las atualizadas ;) "
echo "<br><br>"

rm .versions.temp

for i in $(createpkg -l| grep SlackBuild| cut -d " " -f 7- | cut -d . -f 1); do echo $i >> .versions.temp; done

for i in $(sort .versions.temp); do echo $i; echo "<br>"; for u in $(createpkg --search $i); do grep "VERSION=" $u; echo "<br><br>"; done; done

rm .versions.temp

echo "<br><br>SlackBuilds feitos pelo Projeto <a href=\"http://slack.sarava.org/\">slack.sarava.org</a><br>"
echo "</body>"
echo "</html>"


