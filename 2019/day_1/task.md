<main>
<article class="day-desc"><h2>--- Day 1: The Tyranny of the Rocket Equation ---</h2><p>Santa has become stranded at the edge of the Solar System while delivering presents to other planets! To accurately calculate his position in space, safely align his warp drive, and return to Earth in time to save Christmas, he needs you to bring him <span title="If only you had time to grab an astrolabe.">measurements</span> from <em class="star">fifty stars</em>.</p>
<p>Collect stars by solving puzzles.  Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first.  Each puzzle grants <em class="star">one star</em>. Good luck!</p>
<p>The Elves quickly load you into a spacecraft and prepare to launch.</p>
<p>At the first Go / No Go poll, every Elf is Go until the Fuel Counter-Upper.  They haven't determined the amount of fuel required yet.</p>
<p>Fuel required to launch a given <em>module</em> is based on its <em>mass</em>.  Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.</p>
<p>For example:</p>
<ul>
<li>For a mass of <code>12</code>, divide by 3 and round down to get <code>4</code>, then subtract 2 to get <code>2</code>.</li>
<li>For a mass of <code>14</code>, dividing by 3 and rounding down still yields <code>4</code>, so the fuel required is also <code>2</code>.</li>
<li>For a mass of <code>1969</code>, the fuel required is <code>654</code>.</li>
<li>For a mass of <code>100756</code>, the fuel required is <code>33583</code>.</li>
</ul>
<p>The Fuel Counter-Upper needs to know the total fuel requirement.  To find it, individually calculate the fuel needed for the mass of each module (your puzzle input), then add together all the fuel values.</p>
<p><em>What is the sum of the fuel requirements</em> for all of the modules on your spacecraft?</p>
</article>
<p>To begin, <a href="1/input" target="_blank">get your puzzle input</a>.</p>
<form action="1/answer" method="post"><input name="level" type="hidden" value="1"/><p>Answer: <input autocomplete="off" name="answer" type="text"/> <input type="submit" value="[Submit]"/></p></form>
<p>You can also <span class="share">[Share<span class="share-content">on
  <a href="https://twitter.com/intent/tweet?text=%22The+Tyranny+of+the+Rocket+Equation%22+%2D+Day+1+%2D+Advent+of+Code+2019&amp;url=https%3A%2F%2Fadventofcode%2Ecom%2F2019%2Fday%2F1&amp;related=ericwastl&amp;hashtags=AdventOfCode" target="_blank">Twitter</a>
<a href="javascript:void(0);" onclick="var ms; try{ms=localStorage.getItem('mastodon.server')}finally{} if(typeof ms!=='string')ms=''; ms=prompt('Mastodon Server?',ms); if(typeof ms==='string' &amp;&amp; ms.length){this.href='https://'+ms+'/share?text=%22The+Tyranny+of+the+Rocket+Equation%22+%2D+Day+1+%2D+Advent+of+Code+2019+%23AdventOfCode+https%3A%2F%2Fadventofcode%2Ecom%2F2019%2Fday%2F1';try{localStorage.setItem('mastodon.server',ms);}finally{}}else{return false;}" target="_blank">Mastodon</a></span>]</span> this puzzle.</p>
</main>
