# Bubble Sort

This is a implementation of Bubble Sort algorithm for the number array input and another one with a comparator block for strings.

## Getting Started

One can either download the bubble_sort.rb and include it to its project or just copy the code from the bubble_sort.rb file into ones project.

**Example for the array of numbers:**
```
bubble_sort([4, 3, 78, 2, 0, 2]).to_s
```
**Example for the array with the comparator block:**
```
bubble_sort_by(%w[hi hello hey]) do |left, right| 
    left.length - right.length
end
```
### Prerequisites

Ruby needs to be installed before one is able to run Ruby code in its computer.

## Built With

* [VS Code](https://code.visualstudio.com/) - The code editor used

## Authors

* **Jaak Kivinukk** - *Initial work* - [Jaakal](https://github.com/Jaakal)
* **Clinton Enyinna** - *Initial work* - [ClintonEnyinna](https://github.com/ClintonEnyinna)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

