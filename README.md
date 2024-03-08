# Movie2snapshot
Snapshot generation from an MP4 movie by MATLAB.

**Communication**

<a style="text-decoration: none" href="https://twitter.com/hogelungfish_" target="_blank">
    <img src="https://img.shields.io/badge/twitter-%40hogelungfish_-1da1f2.svg" alt="Twitter">
</a>
<p>

**Language**
<p>
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/matlab/matlab-original.svg" width="60"/>
<p>

## Directory    
<pre>
└─movie2snapshot
    ├─fig
    ├─load
    └─ToolBoxes
</pre>


## Preparation before analysis
__[Step 1] Install the ToolBoxes__

The following ToolBoxes in “./ToolBoxes/” are required,

*	__“mmread”__ by  David Foti:  
[https://jp.mathworks.com/matlabcentral/fileexchange/309-mpgwrite?s_tid=srchtitle](https://jp.mathworks.com/matlabcentral/fileexchange/8028-mmread)https://jp.mathworks.com/matlabcentral/fileexchange/8028-mmread


__[Step 2] movie__

Put an MP4 movie in "./load/".

__[Step 3] Genarate snapshot__

Execute "plot_data.m", then the snapshot is generated in "./fig/" directory.
