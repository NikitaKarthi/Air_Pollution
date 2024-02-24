import json
import sys

def delete_empty_cells(filename):
    # Read the notebook file
    with open(filename, 'r') as f:
        notebook = json.load(f)

    # Filter out empty cells
    non_empty_cells = []
    for cell in notebook['cells']:
        if cell['cell_type'] != 'code':
            non_empty_cells.append(cell)
        elif isinstance(cell['source'], list):
            # Join the list of strings representing the lines of code into a single string
            source_code = '\n'.join(cell['source'])
            if source_code.strip() != '':
                non_empty_cells.append(cell)
        elif cell['source'].strip() != '':
            non_empty_cells.append(cell)

    # Update the notebook with non-empty cells
    notebook['cells'] = non_empty_cells

    # Write the updated content back to the file
    with open(filename, 'w') as f:
        json.dump(notebook, f)

    return

def add_r_magic(filename):
    # Read the notebook file
    with open(filename, 'r') as f:
        notebook = json.load(f)

    # Loop through each cell and add %%R at the beginning
    for cell in notebook['cells']:
        if cell['cell_type'] == 'code':
            if isinstance(cell['source'], list):
                # Join the list of strings representing the lines of code into a single string
                cell['source'] = '%%R\n' + '\n'.join(cell['source'])
            else:
                cell['source'] = '%%R\n' + cell['source']

    # Write the updated content back to the file
    with open(filename, 'w') as f:
        json.dump(notebook, f)

    return

def remove_empty_lines(filename):
    # Read the notebook file
    with open(filename, 'r') as f:
        notebook = json.load(f)

    # Loop through each cell and remove unnecessary empty lines
    for cell in notebook['cells']:
        if cell['cell_type'] == 'code':
            lines = cell['source'].split('\n')
            updated_lines = [line for line in lines if line.strip() != '' or line == '\n']
            cell['source'] = '\n'.join(updated_lines)

    # Write the updated content back to the file
    with open(filename, 'w') as f:
        json.dump(notebook, f)

# Replace 'your_notebook.ipynb' with the path to your Jupyter notebook file
if len(sys.argv) != 2:
    print("Usage: python script.py <command>")

filename = sys.argv[1]
print("filename received:", filename)

delete_empty_cells(filename)
add_r_magic(filename)
remove_empty_lines(filename)
