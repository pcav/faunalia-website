var newURL = window.location.pathname;
var subStr = '/pt/';

window.onload = function clear() {

if (newURL.toLowerCase().indexOf( subStr.toLowerCase() ) !== -1 )
  {
document.body.innerHTML = document.body.innerHTML.replace('class="reference internal" href="#perche-scegliere-i-corsi-di-faunalia"', 'class="reference internal" href="#porque-escolher-as-nossas-formacoes"');
document.body.innerHTML = document.body.innerHTML.replace('class="headerlink" href="#perche-scegliere-i-corsi-di-faunalia"', 'class="headerlink" href="#porque-escolher-as-nossas-formacoes"');
document.body.innerHTML = document.body.innerHTML.replace('class="section" id="perche-scegliere-i-corsi-di-faunalia"', 'class="section" id="porque-escolher-as-nossas-formacoes"');
  }
}
