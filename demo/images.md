# Images {#sec:images}

<!-- ## Plain LaTeX format

Figure \ref{fig:latex-1} and Figure \ref{fig:latex-2} show how to include images with LaTeX format.

\begin{figure}[h]
    \centering
    \includegraphics{demo/images/mario.jpeg}
    \caption{Image in LaTeX format with default width.}
    \label{fig:latex-1}
\end{figure}

\begin{figure}[h]
    \centering
    \includegraphics[width=1cm]{demo/images/mario.jpeg}
    \caption{Image in LaTeX format with custom width.}
    \label{fig:latex-2}
\end{figure} -->

## Markdown format

Figure @fig:img-1 shows how to include an image with degault width, and Figure @fig:img-2 shows how to include an image with custom width.

![Image in Markdown format and default width.](images/mario.jpeg){#fig:img-1}

![Image in Markdown format and custom width.](images/mario.jpeg){width=1cm #fig:img-2}

\clearpage

And now there is an image with some text above...

![Image in Markdown format and default width.](images/mario.jpeg){#fig:img-3}

...and some text below.