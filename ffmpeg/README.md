# ffmpeg

[ffmpeg Documentation](https://ffmpeg.org/ffmpeg.html)

[Convert Between Image Formats \| ImageMagick](https://imagemagick.org/script/convert.php)


```bash
# Create 30 images with increasing filled progress bars
for i in {1..30}; do
    progress=$((i*1000/30))  # increase size 10 times
    convert -size 1000x200 xc:grey50 -fill "rgb(100,149,237)" -draw "rectangle 0,0 $progress,200" progress_$(printf "%02d" $i).png
done

width=1440  # width of original images

# Overlay progress bar onto each image, create new image
for i in {1..30}; do
    # Calculate progress bar position
    x_offset=$(( (width-1000)/2 ))  # center the progress bar

    # Overlay progress bar and save as new image
    convert ais_june_choropleth_$i.png progress_$(printf "%02d" $i).png -geometry +$x_offset+10 -composite ais_june_choropleth_progress_$(printf "%02d" $i).png
done

# Create video using ffmpeg
ffmpeg -framerate 5 -pattern_type glob -i 'ais_june_choropleth_progress_*.png' -c:v libx264 -r 30 -pix_fmt yuv420p ais_june_choropleth.mp4

# Clean up progress bar and composite images
rm progress_*.png
rm ais_june_choropleth_progress_*.png
```

In this script, the `$(printf "%02d" $i)` part is only used for the progress bar images and the final composited images, which will always have filenames with zero-padded numbers. But the original image filenames are referenced as they are (i.e., `ais_june_choropleth_$i.png`), preserving the original non-zero-padded format.

This script will create 30 images for the progress bars named `progress_*.png`. It will then overlay these progress bars onto the original images and save the result as `ais_june_choropleth_progress_*.png`. Finally, it will compile these composite images into a video and clean up the temporary images.

These are first, a map of all AIS messages from MarineCadastre.gov, downsampled to 1 day frequency, for the 30 days of June 2022, and second, filtered to cargo vessels (VesselType = 70). Daily density plots made using h3 on Databricks.
