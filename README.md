# parallel-processing-mandelbrot.rb

🧂🧂🧂 Rubyで並列処理でマンデルブロ集合を描画してみる！  

![成果物](./docs/images/fruit.png)  

```result
                      user     system      total        real
simple            7.595706   0.067932   7.663638 (  7.668041)
multi_thread      7.384131   0.102468   7.486599 (  7.492182)
```

ほとんどパフォーマンスが変わらないことを確認できます！  
これは、RubyのGIL(Giant VM Lock)が原因です。  
