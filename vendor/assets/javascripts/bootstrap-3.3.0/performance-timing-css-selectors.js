  (function TimeThisMother() {
      window.onload = function() {
          setTimeout(function() {
              var t = performance.timing;
              console.log("Speed of selection is: " + (t.loadEventEnd - t.responseEnd) + " milliseconds");
          }, 0);
      };
  })();
